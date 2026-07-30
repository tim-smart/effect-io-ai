Package: `@effect/cli`<br />
Module: `ConfigFile`<br />

## ConfigFile.makeProvider

`fileName` must be a static application-defined value and must not be derived
from untrusted input.

**Signature**

```ts
declare const makeProvider: (fileName: string, options?: { readonly formats?: ReadonlyArray<Kind>; readonly searchPaths?: ReadonlyArray<string>; } | undefined) => Effect<ConfigProvider, ConfigFileError, Path | FileSystem>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/ConfigFile.ts#L53)

Since v2.0.0