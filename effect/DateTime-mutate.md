Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.mutate

Modify a `DateTime` by applying a function to a cloned `Date` instance.

The `Date` will first have the time zone applied if possible, and then be
converted back to a `DateTime` within the same time zone.

Supports `disambiguation` when the new wall clock time is ambiguous.

**Signature**

```ts
declare const mutate: { (f: (date: Date) => void, options?: { readonly disambiguation?: Disambiguation | undefined; }): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, f: (date: Date) => void, options?: { readonly disambiguation?: Disambiguation | undefined; }): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1229)

Since v3.6.0