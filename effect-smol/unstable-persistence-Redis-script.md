Package: `effect`<br />
Module: `Redis`<br />

## Redis.script

Constructs a typed Redis Lua script descriptor.

The result type defaults to `void` and can be refined with
`withReturnType`.

**Signature**

```ts
declare const script: <Params extends ReadonlyArray<any>>(f: (...params: Params) => ReadonlyArray<unknown>, options: { readonly lua: string; readonly numberOfKeys: number | ((...params: Params) => number); }) => Script<{ params: Params; result: void; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redis.ts#L168)

Since v4.0.0