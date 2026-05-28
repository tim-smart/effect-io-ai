Package: `effect`<br />
Module: `Cause`<br />

## Cause.StackTrace

Context annotation used to store the stack frame captured at the point of failure.

**When to use**

Use to read the failure stack-frame annotation from a `Reason` when building
diagnostics, logging, or custom cause renderers.

**Details**

The runtime annotates every reason with this when a stack frame is
available. Retrieve it via
`Context.get(Cause.reasonAnnotations(reason), Cause.StackTrace)`.

**See**

- `reasonAnnotations` for reading annotations from a single reason
- `annotations` for reading merged annotations from a cause
- `InterruptorStackTrace` for the interrupt-specific stack-frame annotation

**Signature**

```ts
declare class StackTrace
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1983)

Since v4.0.0