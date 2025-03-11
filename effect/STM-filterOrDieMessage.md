## filterOrDieMessage

Dies with a `Cause.RuntimeException` having the specified  message if the
predicate fails.

**Signature**

```ts
declare const filterOrDieMessage: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>, message: string): <E, R>(self: STM<A, E, R>) => STM<B, E, R>; <A>(predicate: Predicate<NoInfer<A>>, message: string): <E, R>(self: STM<A, E, R>) => STM<A, E, R>; <A, E, R, B extends A>(self: STM<A, E, R>, refinement: Refinement<A, B>, message: string): STM<B, E, R>; <A, E, R>(self: STM<A, E, R>, predicate: Predicate<A>, message: string): STM<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L631)

Since v2.0.0