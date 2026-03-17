Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.WatchEvent.Update

Event representing the modification of an existing file or directory.

This event is triggered when an existing file or directory is
modified in the watched location.

**Signature**

```ts
export interface Update {
    readonly _tag: "Update"
    readonly path: string
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1204)

Since v4.0.0