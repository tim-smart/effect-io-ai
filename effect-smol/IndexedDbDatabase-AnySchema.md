Package: `@effect/platform-browser`<br />
Module: `IndexedDbDatabase`<br />

## IndexedDbDatabase.AnySchema

Type-erased `IndexedDbSchema` covering any source version, target version, and migration error type.

**Signature**

```ts
type AnySchema = IndexedDbSchema<
  IndexedDbVersion.AnyWithProps,
  IndexedDbVersion.AnyWithProps,
  any
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbDatabase.ts#L297)

Since v4.0.0