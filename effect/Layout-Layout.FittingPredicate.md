Package: `@effect/printer`<br />
Module: `Layout`<br />

## Layout.Layout.FittingPredicate

Decides whether a `DocStream` fits the given constraints, namely:
- original indentation of the current column
- initial indentation of the alternative `DocStream` if it starts with
  a line break (used by `layoutSmart`)
- width in which to fit the first line

**Signature**

```ts
export interface FittingPredicate<A> {
    (
      stream: DocStream<A>,
      indentation: number,
      currentColumn: number,
      comparator: LazyArg<DocStream<A>>
    ): boolean
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Layout.ts#L48)

Since v1.0.0