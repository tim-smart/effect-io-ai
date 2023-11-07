# Stream

A `Stream<R, E, A>` is a description of a program that, when evaluated, may
emit zero or more values of type `A`, may fail with errors of type `E`, and
uses an context of type `R`. One way to think of `Stream` is as a
`Effect` program that could emit multiple values.

`Stream` is a purely functional _pull_ based stream. Pull based streams offer
inherent laziness and backpressure, relieving users of the need to manage
buffers between operators. As an optimization, `Stream` does not emit
single values, but rather an array of values. This allows the cost of effect
evaluation to be amortized.

`Stream` forms a monad on its `A` type parameter, and has error management
facilities for its `E` type parameter, modeled similarly to `Effect` (with
some adjustments for the multiple-valued nature of `Stream`). These aspects
allow for rich and expressive composition of streams.

To import and use `Stream` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.Stream
```
