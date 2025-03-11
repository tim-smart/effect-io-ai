## isFailType

Checks if a `Cause` is a `Fail` type.

**See**

- `fail` Create a new `Fail` cause

**Signature**

```ts
declare const isFailType: <E>(self: Cause<E>) => self is Fail<E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L682)

Since v2.0.0