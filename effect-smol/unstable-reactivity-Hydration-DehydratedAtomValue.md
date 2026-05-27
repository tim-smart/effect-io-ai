Package: `effect`<br />
Module: `Hydration`<br />

## Hydration.DehydratedAtomValue

A dehydrated serializable atom value.

**Details**

It stores the atom serialization key, encoded value, dehydration timestamp, and
an optional promise used when an `AsyncResult.Initial` value is encoded as a
future non-initial value.

**Signature**

```ts
export interface DehydratedAtomValue extends DehydratedAtom {
  readonly key: string
  readonly value: unknown
  readonly dehydratedAt: number
  readonly resultPromise?: Promise<unknown> | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hydration.ts#L62)

Since v4.0.0