Package: `effect`<br />
Module: `Sink`<br />

## Sink.SinkUnifyIgnore

Marker used by Effect's `Unify` machinery for `Sink` values.

It prevents the inherited `Effect` unifier from being selected when
sink-specific unification should preserve the `Sink` type parameters. Users
normally do not need to reference this interface directly.

**Signature**

```ts
export interface SinkUnifyIgnore {
  Effect?: true
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L151)

Since v2.0.0