Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.parseFdName

Parse an fd name like "fd3" to its numeric index.
Returns undefined if the name is invalid.

**Signature**

```ts
declare const parseFdName: (name: string) => number | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L839)

Since v4.0.0