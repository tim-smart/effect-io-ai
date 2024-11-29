# takeFirst

Takes the first matching value, or retries until there is one.

To import and use `takeFirst` from the "TSet" module:

ts
import \* as TSet from "effect/TSet"
// Can be accessed like this
TSet.takeFirst
undefined

**Signature**

```ts
export declare const takeFirst: {
  <A, B>(pf: (a: A) => Option.Option<B>): (self: TSet<A>) => STM.STM<B>
  <A, B>(self: TSet<A>, pf: (a: A) => Option.Option<B>): STM.STM<B>
}
```
