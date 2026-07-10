Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.ExitEncoded

The transport representation of an RPC `Exit`, encoding success values or a
failure cause made of failures, defects, and interrupts.

**Signature**

```ts
type ExitEncoded<A, E> = {
  readonly _tag: "Success"
  readonly value: A
} | {
  readonly _tag: "Failure"
  readonly cause: ReadonlyArray<
    {
      readonly _tag: "Fail"
      readonly error: E
    } | {
      readonly _tag: "Die"
      readonly defect: unknown
    } | {
      readonly _tag: "Interrupt"
      readonly fiberId: number | undefined
    }
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L256)

Since v4.0.0