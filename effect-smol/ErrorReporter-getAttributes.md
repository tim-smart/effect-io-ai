Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.getAttributes

Reads the `ErrorReporter.attributes` annotation from an error object,
returning an empty record when unset.

**Signature**

```ts
declare const getAttributes: (error: object) => ReadonlyRecord<string, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L454)

Since v4.0.0