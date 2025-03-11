## mutate

Modify a `DateTime` by applying a function to a cloned `Date` instance.

The `Date` will first have the time zone applied if possible, and then be
converted back to a `DateTime` within the same time zone.

**Signature**

```ts
declare const mutate: { (f: (date: Date) => void): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, f: (date: Date) => void): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1139)

Since v3.6.0