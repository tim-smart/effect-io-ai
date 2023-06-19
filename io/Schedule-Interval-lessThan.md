# lessThan

Returns `true` if this `Interval` is less than `that` interval, `false`
otherwise.

Part of the `Interval` module, imported from `@effect/io/Schedule/Interval`.

**Signature**

```ts
export declare const lessThan: {
  (that: Interval): (self: Interval) => boolean
  (self: Interval, that: Interval): boolean
}
```
