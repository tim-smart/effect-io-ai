# zipLeft

Sequences the specified `that` `Option` but ignores its value.

It is useful when we want to chain multiple operations, but only care about the result of `self`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Signature**

```ts
export declare const zipLeft: {
  <A, _>(self: Option<A>, that: Option<_>): Option<A>
  <_>(that: Option<_>): <A>(self: Option<A>) => Option<A>
}
```
