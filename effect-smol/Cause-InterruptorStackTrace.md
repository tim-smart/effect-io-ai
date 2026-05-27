Package: `effect`<br />
Module: `Cause`<br />

## Cause.InterruptorStackTrace

`Context` key for the stack frame captured at the point of
interruption.

**When to use**

Use when attaching or reading the stack-frame annotation consumed by
interrupt-only cause rendering.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L2007)

Since v4.0.0