# collect

Simultaneously filters and maps the value produced by this effect.

To import and use `collect` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.collect
```

**Signature**

```ts
export declare const collect: {
  <A, A2>(pf: (a: A) => Option.Option<A2>): <R, E>(self: STM<R, E, A>) => STM<R, E, A2>
  <R, E, A, A2>(self: STM<R, E, A>, pf: (a: A) => Option.Option<A2>): STM<R, E, A2>
}
```
