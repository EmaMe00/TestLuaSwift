//
//  LuaWrapper.m
//  Keychain
//
//  Created by Emanuele Mele on 18/03/22.
//

//Object-C File

#include "LuaWrapper.h"
#import <Foundation/Foundation.h>


@implementation Lua

- (void) setup {
    luaState = luaL_newstate();
    luaL_openlibs(luaState);
}

- (void) script: (const char *) script {
    luaL_loadstring(luaState, script);
    lua_pcall(luaState, 0, 0, 0);
}

- (void) destruct {
    lua_close(luaState);
}

@end


LUAMOD_API int luaopen_os (lua_State *L) {
  return 1;
}
