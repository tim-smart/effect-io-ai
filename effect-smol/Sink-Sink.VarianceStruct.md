Package: `effect`<br />
Module: `Sink`<br />

## Sink.Sink.VarianceStruct

The internal structure representing Sink variance annotations.
Contains the actual variance markers for each type parameter.

**Example**

```ts
import type * as Sink from "effect/Sink"

// The variance structure is used internally by the type system
// It ensures proper type safety for Sink operations
type SinkInstance = Sink.Sink<number, string>
```

**Signature**

```ts
export interface VarianceStruct<out A, in In, out L, out E, out R> {
    _A: Types.Covariant<A>
    _In: Types.Contravariant<In>
    _L: Types.Covariant<L>
    _E: Types.Covariant<E>
    _R: Types.Covariant<R>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L183)

Since v2.0.0