Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.runtimePromise

Capture a Runtime and use it to fork Effect's, adding the forked fibers to the FiberMap.

**Signature**

```ts
declare const runtimePromise: <K, A, E>(self: FiberMap<K, A, E>) => <R = never>() => Effect.Effect<(<XE extends E, XA extends A>(key: K, effect: Effect.Effect<XA, XE, R>, options?: (Runtime.RunForkOptions & { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined; }) | undefined) => Promise<XA>), never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberMap.ts#L580)

Since v3.13.0