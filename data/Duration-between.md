# between

Checks if a `Duration` is between a `minimum` and `maximum` value.

Part of the `Duration` module, imported from `@effect/data/Duration`.

**Signature**

```ts
export declare const between: {
  (minimum: Duration, maximum: Duration): (self: Duration) => boolean
  (self: Duration, minimum: Duration, maximum: Duration): boolean
}
```
