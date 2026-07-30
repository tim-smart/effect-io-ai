Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.mutateUtc

Modify a `DateTime` by applying a function to a cloned UTC `Date` instance.

**Signature**

```ts
declare const mutateUtc: { (f: (date: Date) => void): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, f: (date: Date) => void): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1251)

Since v3.6.0