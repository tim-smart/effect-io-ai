# as

Maps the `Some` value of this `Option` to the specified constant value.

Part of the `Option` module, imported from `@effect/data/Option`.

**Signature**

```ts
export declare const as: { <_, B>(self: Option<_>, b: B): Option<B>; <B>(b: B): <_>(self: Option<_>) => Option<B> }
```
