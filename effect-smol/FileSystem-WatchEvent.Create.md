Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.WatchEvent.Create

Event representing the creation of a new file or directory.

This event is triggered when a new file or directory is created
in the watched location.

**Signature**

```ts
export interface Create {
    readonly _tag: "Create"
    readonly path: string
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1186)

Since v4.0.0