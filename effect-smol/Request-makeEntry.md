Package: `effect`<br />
Module: `Request`<br />

## Request.makeEntry

Creates a `Request.Entry` from its component fields.

**Notes**

This is a low-level helper for request runtime and resolver infrastructure;
most application code receives entries from a `RequestResolver` instead of
constructing them directly.

**Signature**

```ts
declare const makeEntry: <R>(options: { readonly request: R; readonly context: Context.Context<[R] extends [Request<infer _A, infer _E, infer _R>] ? _R : never>; readonly uninterruptible: boolean; readonly completeUnsafe: (exit: Exit.Exit<[R] extends [Request<infer _A, infer _E, infer _R>] ? _A : never, [R] extends [Request<infer _A, infer _E, infer _R>] ? _E : never>) => void; }) => Entry<R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L532)

Since v2.0.0