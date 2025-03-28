Package: `effect`<br />
Module: `Micro`<br />

## Micro.onExitIf

When the `Micro` effect is completed, run the given finalizer effect if it
matches the specified predicate.

**Signature**

```ts
declare const onExitIf: { <A, E, XE, XR, B extends MicroExit<A, E>>(refinement: Refinement<MicroExit<A, E>, B>, f: (exit: B) => Micro<void, XE, XR>): <R>(self: Micro<A, E, R>) => Micro<A, E | XE, R | XR>; <A, E, XE, XR>(predicate: Predicate<MicroExit<NoInfer<A>, NoInfer<E>>>, f: (exit: MicroExit<NoInfer<A>, NoInfer<E>>) => Micro<void, XE, XR>): <R>(self: Micro<A, E, R>) => Micro<A, E | XE, R | XR>; <A, E, R, XE, XR, B extends MicroExit<A, E>>(self: Micro<A, E, R>, refinement: Refinement<MicroExit<A, E>, B>, f: (exit: B) => Micro<void, XE, XR>): Micro<A, E | XE, R | XR>; <A, E, R, XE, XR>(self: Micro<A, E, R>, predicate: Predicate<MicroExit<NoInfer<A>, NoInfer<E>>>, f: (exit: MicroExit<NoInfer<A>, NoInfer<E>>) => Micro<void, XE, XR>): Micro<A, E | XE, R | XR>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3522)

Since v3.4.6