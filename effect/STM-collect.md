# collect

Simultaneously filters and maps the value produced by this effect.

To import and use `collect` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.collect
undefined

**Signature**

```ts
export declare const collect: {
  <A, A2>(pf: (a: A) => Option.Option<A2>): <E, R>(self: STM<A, E, R>) => STM<A2, E, R>
  <A, E, R, A2>(self: STM<A, E, R>, pf: (a: A) => Option.Option<A2>): STM<A2, E, R>
}
```
