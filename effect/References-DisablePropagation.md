Package: `effect`<br />
Module: `References`<br />

## References.DisablePropagation

Context reference for disabling trace propagation in the current context.

**When to use**

Use to mark tracing work as non-propagating while still allowing local span
tracking.

**Details**

Annotated spans become non-propagating no-op spans, and parent selection
skips spans marked with disabled propagation.

**See**

- `TracerEnabled` for disabling span registration instead of only propagation

**Signature**

```ts
declare const DisablePropagation: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/References.ts#L56)

Since v4.0.0