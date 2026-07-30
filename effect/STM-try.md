Package: `effect`<br />
Module: `STM`<br />

## STM.try

Imports a synchronous side-effect into a pure value, translating any thrown
exceptions into typed failed effects.

**Signature**

```ts
declare const try: { <A, E>(options: { readonly try: LazyArg<A>; readonly catch: (u: unknown) => E; }): STM<A, E>; <A>(try_: LazyArg<A>): STM<A, unknown>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1823)

Since v2.0.0