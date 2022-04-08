# TestLuaSwift
Nella ContentView bisogna inseririre questo codice:


                             
      let filename = Bundle.main.path(forResource: "script",ofType: "lua")!
      do {

      let lua = Lua()

      lua.setup()

      let luaScript = try String(contentsOfFile: filename)
      let ptrScript = strdup(luaScript)
      lua.script(ptrScript)
      free(ptrScript)

      lua.destruct()

       } catch let error {
      print("can not read file", filename, error)
      }


il codice non fa altro che richiamare e cercare di eseguire il file script.lua
