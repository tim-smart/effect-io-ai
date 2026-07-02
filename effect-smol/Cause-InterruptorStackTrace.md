Package: `effect`<br />
Module: `Cause`<br />

## Cause.InterruptorStackTrace

Context annotation used to store the stack frame captured at the point of
interruption.

**When to use**

Use when you need the stack-frame annotation used by interrupt-only cause
rendering.

**Details**

Similar to `StackTrace` but specific to `Interrupt` reasons.

**See**

- `StackTrace` for stack frames attached to failures
- `reasonAnnotations` for reading annotations from a single reason
- `annotate` for attaching annotations to a cause

**Signature**

```ts
declare class InterruptorStackTrace
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1939)

Since v4.0.0