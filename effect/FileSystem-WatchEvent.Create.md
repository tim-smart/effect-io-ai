Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.WatchEvent.Create

Event representing the creation of a new file or directory.

**Details**

This event is triggered when a new file or directory is created
in the watched location.

**Signature**

```ts
export interface Create {
    readonly _tag: "Create"
    readonly path: string
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FileSystem.ts#L1327)

Since v4.0.0