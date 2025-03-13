Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.makeRuntimePromise

Create an Effect run function that is backed by a FiberMap.

**Signature**

```ts
declare const makeRuntimePromise: <R, K, A = unknown, E = unknown>() => Effect.Effect<(<XE extends E, XA extends A>(key: K, effect: Effect.Effect<XA, XE, R>, options?: (Runtime.RunForkOptions & { readonly onlyIfMissing?: boolean | undefined; }) | undefined) => Promise<XA>), never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberMap.ts#L171)

Since v3.13.0