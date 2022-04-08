//
//  LuaWrapper.h
//  Keychain
//
//  Created by Emanuele Mele on 18/03/22.
//

#ifndef LuaWrapper_h

#define LuaWrapper_h

#include "src/lua.h"
#include "src/lauxlib.h"
#include "src/lualib.h"
#import <Foundation/Foundation.h>

@interface Lua : NSObject {
    lua_State * luaState;
}

- (void) setup;
- (void) script: (const char *) script;
- (void) destruct;

@end

#endif /* LuaWrapper_h */
