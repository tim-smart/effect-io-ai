Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.runtimePromise

Capture a Runtime and use it to fork Effect's, adding the forked fibers to the FiberHandle.

The returned run function will return Promise's that will resolve when the
fiber completes.

**Signature**

```ts
declare const runtimePromise: <A, E>(self: FiberHandle<A, E>) => <R = never>() => Effect.Effect<(<XE extends E, XA extends A>(effect: Effect.Effect<XA, XE, R>, options?: (Runtime.RunForkOptions & { readonly propagateInterruption?: boolean | undefined; }) | undefined) => Promise<XA>), never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberHandle.ts#L475)

Since v3.13.0