Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.runtimePromise

Capture a Runtime and use it to fork Effect's, adding the forked fibers to the FiberSet.

The returned run function will return Promise's.

**Signature**

```ts
declare const runtimePromise: <A, E>(self: FiberSet<A, E>) => <R = never>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: (Runtime.RunForkOptions & { readonly propagateInterruption?: boolean | undefined; }) | undefined) => Promise<XA>), never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberSet.ts#L420)

Since v3.13.0