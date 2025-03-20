Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.setParts

Set the different parts of a `DateTime` as an object.

The Date will be time zone adjusted.

**Signature**

```ts
declare const setParts: { (parts: Partial<DateTime.PartsWithWeekday>): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, parts: Partial<DateTime.PartsWithWeekday>): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L967)

Since v3.6.0