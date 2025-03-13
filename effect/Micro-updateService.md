Package: `effect`<br />
Module: `Micro`<br />

## Micro.updateService

Update the service for the given `Context.Tag` in the environment.

**Signature**

```ts
declare const updateService: { <I, A>(tag: Context.Reference<I, A>, f: (value: A) => A): <XA, E, R>(self: Micro<XA, E, R>) => Micro<XA, E, R>; <I, A>(tag: Context.Tag<I, A>, f: (value: A) => A): <XA, E, R>(self: Micro<XA, E, R>) => Micro<XA, E, R | I>; <XA, E, R, I, A>(self: Micro<XA, E, R>, tag: Context.Reference<I, A>, f: (value: A) => A): Micro<XA, E, R>; <XA, E, R, I, A>(self: Micro<XA, E, R>, tag: Context.Tag<I, A>, f: (value: A) => A): Micro<XA, E, R | I>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1895)

Since v3.11.0