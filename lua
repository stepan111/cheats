#Lua examples how to debug issue in Nginx
# List balancer peers
balancer_by_lua_block {
         -- use Lua to do something interesting here
         -- as a dynamic balancer
        local b = require "ngx.balancer"
        local upstream = require "ngx.upstream"
 --[[       local get_servers, err = upstream.get_servers("lupin_modeln_com")
        if not get_servers then
                ngx.log(ngx.ERR, err)
        end
        for _,srv in ipairs(get_servers) do
                for k,v in pairs(srv) do
                        if k == "addr" then
                                ngx.log(ngx.ERR,k, " = ", v )
                        end
                end
        end ]]--
        local get_peers, err = upstream.get_primary_peers("lupin_modeln_com")
        if not get_peers then
                ngx.log(ngx.ERR, err)
        end
        for _,peer in ipairs(get_peers) do
                for k,v in pairs(peer) do

                        ngx.log(ngx.ERR,k, " = ", v )
                end
        end

        local cookie_Balancer = ngx.var["cookie_Balancer"]
        if cookie_Balancer ~= nil then
                ngx.log(ngx.ERR," Check Balancer by lua block ", cookie_Balancer)
        end
        return true

       }

