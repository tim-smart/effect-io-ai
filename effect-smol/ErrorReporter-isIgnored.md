Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.isIgnored

Returns `true` if the given value has the `ErrorReporter.ignore` annotation
set to `true`.

**When to use**

Use to check whether an error value is annotated to be skipped before
forwarding it to error reporting code.

**See**

- `ignore` for the annotation key this predicate reads

**Signature**

```ts
declare const isIgnored: (u: unknown) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L420)

Since v4.0.0