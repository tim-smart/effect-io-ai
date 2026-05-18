Package: `effect`<br />
Module: `Statement`<br />

## Statement.Fragment

Composable SQL fragment represented as low-level segments that can be
interpolated into statements.

**Signature**

```ts
export interface Fragment {
  readonly [FragmentTypeId]: typeof FragmentTypeId
  readonly segments: ReadonlyArray<Segment>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L44)

Since v4.0.0