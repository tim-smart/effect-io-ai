Package: `effect`<br />
Module: `Statement`<br />

## Statement.Statement

Executable SQL statement that is also a `Fragment` and `Effect`, with helpers
for raw execution, streaming, value rows, unprepared execution, no-transform
execution, and compilation.

**Signature**

```ts
export interface Statement<A> extends Fragment, Effect.Effect<ReadonlyArray<A>, SqlError> {
  readonly raw: Effect.Effect<unknown, SqlError>
  readonly withoutTransform: Effect.Effect<ReadonlyArray<A>, SqlError>
  readonly stream: Stream.Stream<A, SqlError>
  readonly values: Effect.Effect<ReadonlyArray<ReadonlyArray<unknown>>, SqlError>
  readonly valuesUnprepared: Effect.Effect<ReadonlyArray<ReadonlyArray<unknown>>, SqlError>
  readonly unprepared: Effect.Effect<ReadonlyArray<A>, SqlError>
  readonly compile: (withoutTransform?: boolean | undefined) => readonly [
    sql: string,
    params: ReadonlyArray<unknown>
  ]
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Statement.ts#L70)

Since v4.0.0