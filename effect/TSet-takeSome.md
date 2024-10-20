# takeSome

Takes all matching values, or retries until there is at least one.

To import and use `takeSome` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.takeSome
```

**Signature**

```ts
export declare const takeSome: {
  <A, B>(pf: (a: A) => Option.Option<B>): (self: TSet<A>) => STM.STM<[B, ...Array<B>]>
  <A, B>(self: TSet<A>, pf: (a: A) => Option.Option<B>): STM.STM<[B, ...Array<B>]>
}
```
