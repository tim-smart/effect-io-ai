Package: `effect`<br />
Module: `ChildProcessSpawner`<br />

## ChildProcessSpawner.make

Create a new `ChildProcessSpawner` service from a `spawn` funciton

**Signature**

```ts
declare const make: (spawn: ChildProcessSpawner["Service"]["spawn"]) => ChildProcessSpawner["Service"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcessSpawner.ts#L181)

Since v4.0.0