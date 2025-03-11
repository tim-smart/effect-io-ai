## Close

Close the current substream with a given value and pass execution to the
next substream

**Signature**

```ts
export interface Close extends ChildExecutorDecision.Proto {
  readonly _tag: "Close"
  readonly value: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ChildExecutorDecision.ts#L54)

Since v2.0.0