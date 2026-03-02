Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.WatchEvent.Remove

Event representing the deletion of a file or directory.

This event is triggered when a file or directory is deleted
from the watched location.

**Signature**

```ts
export interface Remove {
    readonly _tag: "Remove"
    readonly path: string
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1214)

Since v4.0.0