jardim_backend  | 🌱 Base de dados inicializada com 22 registos!
jardim_backend  | Traceback (most recent call last):
jardim_backend  |   File "/usr/local/bin/uvicorn", line 8, in <module>
jardim_backend  |     sys.exit(main())
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1653, in __call__
jardim_backend  |     return self.main(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1560, in main
jardim_backend  |     rv = self.invoke(ctx)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1414, in invoke
jardim_backend  |     return ctx.invoke(self.callback, **ctx.params)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 911, in invoke
jardim_backend  |     return callback(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 409, in main
jardim_backend  |     run(
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 575, in run
jardim_backend  |     server.run()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 62, in run
jardim_backend  |     return asyncio.run(self.serve(sockets=sockets))
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/runners.py", line 44, in run
jardim_backend  |     return loop.run_until_complete(main)
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
jardim_backend  |     return future.result()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 69, in serve
jardim_backend  |     config.load()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/config.py", line 433, in load
jardim_backend  |     self.loaded_app = import_from_string(self.app)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/importer.py", line 19, in import_from_string
jardim_backend  |     module = importlib.import_module(module_str)
jardim_backend  |   File "/usr/local/lib/python3.10/importlib/__init__.py", line 126, in import_module
jardim_backend  |     return _bootstrap._gcd_import(name[level:], package, level)
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap_external>", line 883, in exec_module
jardim_backend  |   File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
jardim_backend  |   File "/app/app/main.py", line 7, in <module>
jardim_backend  |     from app import models, schemas, crud
jardim_backend  |   File "/app/app/crud.py", line 5, in <module>
jardim_backend  |     def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
jardim_backend  | NameError: name 'Optional' is not defined
jardim_backend  | ℹ️ Base de dados já contém dados cadastrados.
jardim_backend  | Traceback (most recent call last):
jardim_backend  |   File "/usr/local/bin/uvicorn", line 8, in <module>
jardim_backend  |     sys.exit(main())
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1653, in __call__
jardim_backend  |     return self.main(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1560, in main
jardim_backend  |     rv = self.invoke(ctx)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1414, in invoke
jardim_backend  |     return ctx.invoke(self.callback, **ctx.params)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 911, in invoke
jardim_backend  |     return callback(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 409, in main
jardim_backend  |     run(
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 575, in run
jardim_backend  |     server.run()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 62, in run
jardim_backend  |     return asyncio.run(self.serve(sockets=sockets))
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/runners.py", line 44, in run
jardim_backend  |     return loop.run_until_complete(main)
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
jardim_backend  |     return future.result()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 69, in serve
jardim_backend  |     config.load()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/config.py", line 433, in load
jardim_backend  |     self.loaded_app = import_from_string(self.app)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/importer.py", line 19, in import_from_string
jardim_backend  |     module = importlib.import_module(module_str)
jardim_backend  |   File "/usr/local/lib/python3.10/importlib/__init__.py", line 126, in import_module
jardim_backend  |     return _bootstrap._gcd_import(name[level:], package, level)
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap_external>", line 883, in exec_module
jardim_backend  |   File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
jardim_backend  |   File "/app/app/main.py", line 7, in <module>
jardim_backend  |     from app import models, schemas, crud
jardim_backend  |   File "/app/app/crud.py", line 5, in <module>
jardim_backend  |     def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
jardim_backend  | NameError: name 'Optional' is not defined
jardim_backend  | ℹ️ Base de dados já contém dados cadastrados.
jardim_backend  | Traceback (most recent call last):
jardim_backend  |   File "/usr/local/bin/uvicorn", line 8, in <module>
jardim_backend  |     sys.exit(main())
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1653, in __call__
jardim_backend  |     return self.main(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1560, in main
jardim_backend  |     rv = self.invoke(ctx)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1414, in invoke
jardim_backend  |     return ctx.invoke(self.callback, **ctx.params)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 911, in invoke
jardim_backend  |     return callback(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 409, in main
jardim_backend  |     run(
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 575, in run
jardim_backend  |     server.run()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 62, in run
jardim_backend  |     return asyncio.run(self.serve(sockets=sockets))
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/runners.py", line 44, in run
jardim_backend  |     return loop.run_until_complete(main)
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
jardim_backend  |     return future.result()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 69, in serve
jardim_backend  |     config.load()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/config.py", line 433, in load
jardim_backend  |     self.loaded_app = import_from_string(self.app)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/importer.py", line 19, in import_from_string
jardim_backend  |     module = importlib.import_module(module_str)
jardim_backend  |   File "/usr/local/lib/python3.10/importlib/__init__.py", line 126, in import_module
jardim_backend  |     return _bootstrap._gcd_import(name[level:], package, level)
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap_external>", line 883, in exec_module
jardim_backend  |   File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
jardim_backend  |   File "/app/app/main.py", line 7, in <module>
jardim_backend  |     from app import models, schemas, crud
jardim_backend  |   File "/app/app/crud.py", line 5, in <module>
jardim_backend  |     def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
jardim_backend  | NameError: name 'Optional' is not defined
jardim_backend  | ℹ️ Base de dados já contém dados cadastrados.
jardim_backend  | Traceback (most recent call last):
jardim_backend  |   File "/usr/local/bin/uvicorn", line 8, in <module>
jardim_backend  |     sys.exit(main())
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1653, in __call__
jardim_backend  |     return self.main(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1560, in main
jardim_backend  |     rv = self.invoke(ctx)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1414, in invoke
jardim_backend  |     return ctx.invoke(self.callback, **ctx.params)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 911, in invoke
jardim_backend  |     return callback(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 409, in main
jardim_backend  |     run(
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 575, in run
jardim_backend  |     server.run()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 62, in run
jardim_backend  |     return asyncio.run(self.serve(sockets=sockets))
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/runners.py", line 44, in run
jardim_backend  |     return loop.run_until_complete(main)
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
jardim_backend  |     return future.result()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 69, in serve
jardim_backend  |     config.load()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/config.py", line 433, in load
jardim_backend  |     self.loaded_app = import_from_string(self.app)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/importer.py", line 19, in import_from_string
jardim_backend  |     module = importlib.import_module(module_str)
jardim_backend  |   File "/usr/local/lib/python3.10/importlib/__init__.py", line 126, in import_module
jardim_backend  |     return _bootstrap._gcd_import(name[level:], package, level)
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap_external>", line 883, in exec_module
jardim_backend  |   File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
jardim_backend  |   File "/app/app/main.py", line 7, in <module>
jardim_backend  |     from app import models, schemas, crud
jardim_backend  |   File "/app/app/crud.py", line 5, in <module>
jardim_backend  |     def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
jardim_backend  | NameError: name 'Optional' is not defined
jardim_backend  | ℹ️ Base de dados já contém dados cadastrados.
jardim_backend  | Traceback (most recent call last):
jardim_backend  |   File "/usr/local/bin/uvicorn", line 8, in <module>
jardim_backend  |     sys.exit(main())
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1653, in __call__
jardim_backend  |     return self.main(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1560, in main
jardim_backend  |     rv = self.invoke(ctx)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1414, in invoke
jardim_backend  |     return ctx.invoke(self.callback, **ctx.params)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 911, in invoke
jardim_backend  |     return callback(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 409, in main
jardim_backend  |     run(
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 575, in run
jardim_backend  |     server.run()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 62, in run
jardim_backend  |     return asyncio.run(self.serve(sockets=sockets))
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/runners.py", line 44, in run
jardim_backend  |     return loop.run_until_complete(main)
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
jardim_backend  |     return future.result()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 69, in serve
jardim_backend  |     config.load()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/config.py", line 433, in load
jardim_backend  |     self.loaded_app = import_from_string(self.app)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/importer.py", line 19, in import_from_string
jardim_backend  |     module = importlib.import_module(module_str)
jardim_backend  |   File "/usr/local/lib/python3.10/importlib/__init__.py", line 126, in import_module
jardim_backend  |     return _bootstrap._gcd_import(name[level:], package, level)
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap_external>", line 883, in exec_module
jardim_backend  |   File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
jardim_backend  |   File "/app/app/main.py", line 7, in <module>
jardim_backend  |     from app import models, schemas, crud
jardim_backend  |   File "/app/app/crud.py", line 5, in <module>
jardim_backend  |     def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
jardim_backend  | NameError: name 'Optional' is not defined
jardim_backend  | ℹ️ Base de dados já contém dados cadastrados.
jardim_backend  | Traceback (most recent call last):
jardim_backend  |   File "/usr/local/bin/uvicorn", line 8, in <module>
jardim_backend  |     sys.exit(main())
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1653, in __call__
jardim_backend  |     return self.main(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1560, in main
jardim_backend  |     rv = self.invoke(ctx)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1414, in invoke
jardim_backend  |     return ctx.invoke(self.callback, **ctx.params)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 911, in invoke
jardim_backend  |     return callback(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 409, in main
jardim_backend  |     run(
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 575, in run
jardim_backend  |     server.run()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 62, in run
jardim_backend  |     return asyncio.run(self.serve(sockets=sockets))
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/runners.py", line 44, in run
jardim_backend  |     return loop.run_until_complete(main)
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
jardim_backend  |     return future.result()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 69, in serve
jardim_backend  |     config.load()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/config.py", line 433, in load
jardim_backend  |     self.loaded_app = import_from_string(self.app)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/importer.py", line 19, in import_from_string
jardim_backend  |     module = importlib.import_module(module_str)
jardim_backend  |   File "/usr/local/lib/python3.10/importlib/__init__.py", line 126, in import_module
jardim_backend  |     return _bootstrap._gcd_import(name[level:], package, level)
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap_external>", line 883, in exec_module
jardim_backend  |   File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
jardim_backend  |   File "/app/app/main.py", line 7, in <module>
jardim_backend  |     from app import models, schemas, crud
jardim_backend  |   File "/app/app/crud.py", line 5, in <module>
jardim_backend  |     def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
jardim_backend  | NameError: name 'Optional' is not defined
jardim_backend  | ℹ️ Base de dados já contém dados cadastrados.
jardim_backend  | Traceback (most recent call last):
jardim_backend  |   File "/usr/local/bin/uvicorn", line 8, in <module>
jardim_backend  |     sys.exit(main())
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1653, in __call__
jardim_backend  |     return self.main(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1560, in main
jardim_backend  |     rv = self.invoke(ctx)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1414, in invoke
jardim_backend  |     return ctx.invoke(self.callback, **ctx.params)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 911, in invoke
jardim_backend  |     return callback(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 409, in main
jardim_backend  |     run(
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 575, in run
jardim_backend  |     server.run()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 62, in run
jardim_backend  |     return asyncio.run(self.serve(sockets=sockets))
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/runners.py", line 44, in run
jardim_backend  |     return loop.run_until_complete(main)
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
jardim_backend  |     return future.result()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 69, in serve
jardim_backend  |     config.load()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/config.py", line 433, in load
jardim_backend  |     self.loaded_app = import_from_string(self.app)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/importer.py", line 19, in import_from_string
jardim_backend  |     module = importlib.import_module(module_str)
jardim_backend  |   File "/usr/local/lib/python3.10/importlib/__init__.py", line 126, in import_module
jardim_backend  |     return _bootstrap._gcd_import(name[level:], package, level)
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap_external>", line 883, in exec_module
jardim_backend  |   File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
jardim_backend  |   File "/app/app/main.py", line 7, in <module>
jardim_backend  |     from app import models, schemas, crud
jardim_backend  |   File "/app/app/crud.py", line 5, in <module>
jardim_backend  |     def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
jardim_backend  | NameError: name 'Optional' is not defined
jardim_backend  | ℹ️ Base de dados já contém dados cadastrados.
jardim_backend  | Traceback (most recent call last):
jardim_backend  |   File "/usr/local/bin/uvicorn", line 8, in <module>
jardim_backend  |     sys.exit(main())
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1653, in __call__
jardim_backend  |     return self.main(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1560, in main
jardim_backend  |     rv = self.invoke(ctx)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1414, in invoke
jardim_backend  |     return ctx.invoke(self.callback, **ctx.params)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 911, in invoke
jardim_backend  |     return callback(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 409, in main
jardim_backend  |     run(
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 575, in run
jardim_backend  |     server.run()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 62, in run
jardim_backend  |     return asyncio.run(self.serve(sockets=sockets))
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/runners.py", line 44, in run
jardim_backend  |     return loop.run_until_complete(main)
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
jardim_backend  |     return future.result()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 69, in serve
jardim_backend  |     config.load()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/config.py", line 433, in load
jardim_backend  |     self.loaded_app = import_from_string(self.app)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/importer.py", line 19, in import_from_string
jardim_backend  |     module = importlib.import_module(module_str)
jardim_backend  |   File "/usr/local/lib/python3.10/importlib/__init__.py", line 126, in import_module
jardim_backend  |     return _bootstrap._gcd_import(name[level:], package, level)
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap_external>", line 883, in exec_module
jardim_backend  |   File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
jardim_backend  |   File "/app/app/main.py", line 7, in <module>
jardim_backend  |     from app import models, schemas, crud
jardim_backend  |   File "/app/app/crud.py", line 5, in <module>
jardim_backend  |     def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
jardim_backend  | NameError: name 'Optional' is not defined
jardim_backend  | ℹ️ Base de dados já contém dados cadastrados.
jardim_backend  | Traceback (most recent call last):
jardim_backend  |   File "/usr/local/bin/uvicorn", line 8, in <module>
jardim_backend  |     sys.exit(main())
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1653, in __call__
jardim_backend  |     return self.main(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1560, in main
jardim_backend  |     rv = self.invoke(ctx)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1414, in invoke
jardim_backend  |     return ctx.invoke(self.callback, **ctx.params)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 911, in invoke
jardim_backend  |     return callback(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 409, in main
jardim_backend  |     run(
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 575, in run
jardim_backend  |     server.run()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 62, in run
jardim_backend  |     return asyncio.run(self.serve(sockets=sockets))
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/runners.py", line 44, in run
jardim_backend  |     return loop.run_until_complete(main)
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
jardim_backend  |     return future.result()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 69, in serve
jardim_backend  |     config.load()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/config.py", line 433, in load
jardim_backend  |     self.loaded_app = import_from_string(self.app)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/importer.py", line 19, in import_from_string
jardim_backend  |     module = importlib.import_module(module_str)
jardim_backend  |   File "/usr/local/lib/python3.10/importlib/__init__.py", line 126, in import_module
jardim_backend  |     return _bootstrap._gcd_import(name[level:], package, level)
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap_external>", line 883, in exec_module
jardim_backend  |   File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
jardim_backend  |   File "/app/app/main.py", line 7, in <module>
jardim_backend  |     from app import models, schemas, crud
jardim_backend  |   File "/app/app/crud.py", line 5, in <module>
jardim_backend  |     def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
jardim_backend  | NameError: name 'Optional' is not defined
jardim_backend  | ℹ️ Base de dados já contém dados cadastrados.
jardim_backend  | Traceback (most recent call last):
jardim_backend  |   File "/usr/local/bin/uvicorn", line 8, in <module>
jardim_backend  |     sys.exit(main())
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1653, in __call__
jardim_backend  |     return self.main(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1560, in main
jardim_backend  |     rv = self.invoke(ctx)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1414, in invoke
jardim_backend  |     return ctx.invoke(self.callback, **ctx.params)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 911, in invoke
jardim_backend  |     return callback(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 409, in main
jardim_backend  |     run(
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 575, in run
jardim_backend  |     server.run()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 62, in run
jardim_backend  |     return asyncio.run(self.serve(sockets=sockets))
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/runners.py", line 44, in run
jardim_backend  |     return loop.run_until_complete(main)
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
jardim_backend  |     return future.result()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 69, in serve
jardim_backend  |     config.load()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/config.py", line 433, in load
jardim_backend  |     self.loaded_app = import_from_string(self.app)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/importer.py", line 19, in import_from_string
jardim_backend  |     module = importlib.import_module(module_str)
jardim_backend  |   File "/usr/local/lib/python3.10/importlib/__init__.py", line 126, in import_module
jardim_backend  |     return _bootstrap._gcd_import(name[level:], package, level)
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap_external>", line 883, in exec_module
jardim_backend  |   File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
jardim_backend  |   File "/app/app/main.py", line 7, in <module>
jardim_backend  |     from app import models, schemas, crud
jardim_backend  |   File "/app/app/crud.py", line 5, in <module>
jardim_backend  |     def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
jardim_backend  | NameError: name 'Optional' is not defined
jardim_backend  | ℹ️ Base de dados já contém dados cadastrados.
jardim_backend  | Traceback (most recent call last):
jardim_backend  |   File "/usr/local/bin/uvicorn", line 8, in <module>
jardim_backend  |     sys.exit(main())
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1653, in __call__
jardim_backend  |     return self.main(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1560, in main
jardim_backend  |     rv = self.invoke(ctx)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1414, in invoke
jardim_backend  |     return ctx.invoke(self.callback, **ctx.params)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 911, in invoke
jardim_backend  |     return callback(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 409, in main
jardim_backend  |     run(
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 575, in run
jardim_backend  |     server.run()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 62, in run
jardim_backend  |     return asyncio.run(self.serve(sockets=sockets))
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/runners.py", line 44, in run
jardim_backend  |     return loop.run_until_complete(main)
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
jardim_backend  |     return future.result()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 69, in serve
jardim_backend  |     config.load()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/config.py", line 433, in load
jardim_backend  |     self.loaded_app = import_from_string(self.app)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/importer.py", line 19, in import_from_string
jardim_backend  |     module = importlib.import_module(module_str)
jardim_backend  |   File "/usr/local/lib/python3.10/importlib/__init__.py", line 126, in import_module
jardim_backend  |     return _bootstrap._gcd_import(name[level:], package, level)
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap_external>", line 883, in exec_module
jardim_backend  |   File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
jardim_backend  |   File "/app/app/main.py", line 7, in <module>
jardim_backend  |     from app import models, schemas, crud
jardim_backend  |   File "/app/app/crud.py", line 5, in <module>
jardim_backend  |     def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
jardim_backend  | NameError: name 'Optional' is not defined
jardim_backend  | ℹ️ Base de dados já contém dados cadastrados.
jardim_backend  | Traceback (most recent call last):
jardim_backend  |   File "/usr/local/bin/uvicorn", line 8, in <module>
jardim_backend  |     sys.exit(main())
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1653, in __call__
jardim_backend  |     return self.main(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1560, in main
jardim_backend  |     rv = self.invoke(ctx)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1414, in invoke
jardim_backend  |     return ctx.invoke(self.callback, **ctx.params)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 911, in invoke
jardim_backend  |     return callback(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 409, in main
jardim_backend  |     run(
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 575, in run
jardim_backend  |     server.run()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 62, in run
jardim_backend  |     return asyncio.run(self.serve(sockets=sockets))
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/runners.py", line 44, in run
jardim_backend  |     return loop.run_until_complete(main)
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
jardim_backend  |     return future.result()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 69, in serve
jardim_backend  |     config.load()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/config.py", line 433, in load
jardim_backend  |     self.loaded_app = import_from_string(self.app)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/importer.py", line 19, in import_from_string
jardim_backend  |     module = importlib.import_module(module_str)
jardim_backend  |   File "/usr/local/lib/python3.10/importlib/__init__.py", line 126, in import_module
jardim_backend  |     return _bootstrap._gcd_import(name[level:], package, level)
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap_external>", line 883, in exec_module
jardim_backend  |   File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
jardim_backend  |   File "/app/app/main.py", line 7, in <module>
jardim_backend  |     from app import models, schemas, crud
jardim_backend  |   File "/app/app/crud.py", line 5, in <module>
jardim_backend  |     def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
jardim_backend  | NameError: name 'Optional' is not defined
jardim_backend  | ℹ️ Base de dados já contém dados cadastrados.
jardim_backend  | Traceback (most recent call last):
jardim_backend  |   File "/usr/local/bin/uvicorn", line 8, in <module>
jardim_backend  |     sys.exit(main())
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1653, in __call__
jardim_backend  |     return self.main(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1560, in main
jardim_backend  |     rv = self.invoke(ctx)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 1414, in invoke
jardim_backend  |     return ctx.invoke(self.callback, **ctx.params)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/click/core.py", line 911, in invoke
jardim_backend  |     return callback(*args, **kwargs)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 409, in main
jardim_backend  |     run(
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/main.py", line 575, in run
jardim_backend  |     server.run()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 62, in run
jardim_backend  |     return asyncio.run(self.serve(sockets=sockets))
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/runners.py", line 44, in run
jardim_backend  |     return loop.run_until_complete(main)
jardim_backend  |   File "/usr/local/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
jardim_backend  |     return future.result()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/server.py", line 69, in serve
jardim_backend  |     config.load()
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/config.py", line 433, in load
jardim_backend  |     self.loaded_app = import_from_string(self.app)
jardim_backend  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/importer.py", line 19, in import_from_string
jardim_backend  |     module = importlib.import_module(module_str)
jardim_backend  |   File "/usr/local/lib/python3.10/importlib/__init__.py", line 126, in import_module
jardim_backend  |     return _bootstrap._gcd_import(name[level:], package, level)
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
jardim_backend  |   File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
jardim_backend  |   File "<frozen importlib._bootstrap_external>", line 883, in exec_module
jardim_backend  |   File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
jardim_backend  |   File "/app/app/main.py", line 7, in <module>
jardim_backend  |     from app import models, schemas, crud
jardim_backend  |   File "/app/app/crud.py", line 5, in <module>
jardim_backend  |     def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
jardim_backend  | NameError: name 'Optional' is not defined
