Package: `@effect/cli`<br />
Module: `ConfigFile`<br />

## ConfigFile.layer

`fileName` must be a static application-defined value and must not be derived
from untrusted input.

**Signature**

```ts
declare const layer: (fileName: string, options?: { readonly formats?: ReadonlyArray<Kind>; readonly searchPaths?: ReadonlyArray<string>; } | undefined) => Layer<never, ConfigFileError, Path | FileSystem>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/ConfigFile.ts#L70)

Since v2.0.0