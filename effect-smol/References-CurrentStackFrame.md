Package: `effect`<br />
Module: `References`<br />

## References.CurrentStackFrame

Reference containing the current captured stack-frame chain for the running
fiber.

**When to use**

Use when writing low-level tracing or diagnostic integrations that need direct
access to the stack-frame chain carried by the current fiber.

**Details**

Effect and Layer tracing use this reference to attach stack-frame information
to failures and interruption causes. It is normally managed by tracing APIs
rather than provided directly by application code.

**See**

- `StackFrame` for the frame node stored in this reference

**Signature**

```ts
declare const CurrentStackFrame: Context.Reference<StackFrame | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L426)

Since v4.0.0