Package: `effect`<br />
Module: `Cause`<br />

## Cause.StackTrace

`ServiceMap` key for the stack frame captured at the point of failure.

The runtime annotates every reason with this when a stack frame is
available. Retrieve it via
`ServiceMap.get(Cause.reasonAnnotations(reason), Cause.StackTrace)`.

**Signature**

```ts
declare class StackTrace
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1655)

Since v4.0.0