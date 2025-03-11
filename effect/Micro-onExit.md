## onExit

When the `Micro` effect is completed, run the given finalizer effect with the
`MicroExit` of the executed effect.

**Signature**

```ts
declare const onExit: { <A, E, XE, XR>(f: (exit: MicroExit<A, E>) => Micro<void, XE, XR>): <R>(self: Micro<A, E, R>) => Micro<A, E | XE, R | XR>; <A, E, R, XE, XR>(self: Micro<A, E, R>, f: (exit: MicroExit<A, E>) => Micro<void, XE, XR>): Micro<A, E | XE, R | XR>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3469)

Since v3.4.6