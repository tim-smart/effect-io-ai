Package: `effect`<br />
Module: `ChildProcessSpawner`<br />

## ChildProcessSpawner.make

Creates a `ChildProcessSpawner` service from a `spawn` function, deriving
helpers for exit codes and output collection from that implementation.

**Signature**

```ts
declare const make: (spawn: ChildProcessSpawner["Service"]["spawn"]) => ChildProcessSpawner["Service"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcessSpawner.ts#L208)

Since v4.0.0