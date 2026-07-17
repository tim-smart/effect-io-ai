Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.Builder

Fluent renderer for `AsyncResult` values that tracks unhandled cases at the type level and exposes `exhaustive` only after all possible cases are handled.

**Signature**

```ts
type Builder<Out, A, E, I, F> = & Pipeable
  & {
    onWaiting<B>(f: (result: AsyncResult<A, E>) => B): Builder<Out | B, A, E, I, F>
    orElse<B>(orElse: LazyArg<B>): Out | B
    orNull(): Out | null
    render(): [A | I] extends [never] ? Out : Out | null
  }
  & ([A | E | I | F] extends [never] ? {
      exhaustive(): Out
    } :
    unknown)
  & ([I] extends [never] ? unknown :
    {
      onInitial<B>(f: (result: Initial<A, E>) => B): Builder<Out | B, A, E, never, F>
      onInitialOrWaiting<B>(f: (result: AsyncResult<A, E>) => B): Builder<Out | B, A, E, never, F>
    })
  & ([A] extends [never] ? unknown :
    {
      onSuccess<B>(f: (value: A, result: Success<A, E>) => B): Builder<Out | B, never, E, I, F>
    })
  & ([E] extends [never] ? unknown : {
    onError<B>(f: (error: E, result: Failure<A, E>) => B): Builder<Out | B, A, never, I, F>

    onErrorIf<B extends E, C>(
      refinement: Refinement<E, B>,
      f: (error: B, result: Failure<A, E>) => C
    ): Builder<Out | C, A, Types.EqualsWith<E, B, E, Exclude<E, B>>, I, F>
    onErrorIf<C>(
      predicate: Predicate<E>,
      f: (error: E, result: Failure<A, E>) => C
    ): Builder<Out | C, A, E, I, F>

    onErrorTag<const Tags extends ReadonlyArray<Types.Tags<E>>, B>(
      tags: Tags,
      f: (error: Types.ExtractTag<E, Tags[number]>, result: Failure<A, E>) => B
    ): Builder<Out | B, A, Types.ExcludeTag<E, Tags[number]>, I, F>
    onErrorTag<const Tag extends Types.Tags<E>, B>(
      tag: Tag,
      f: (error: Types.ExtractTag<E, Tag>, result: Failure<A, E>) => B
    ): Builder<Out | B, A, Types.ExcludeTag<E, Tag>, I, F>
  })
  & ([E | F] extends [never] ? unknown : {
    onFailure<B>(f: (cause: Cause.Cause<E>, result: Failure<A, E>) => B): Builder<Out | B, A, never, I, never>
  })
  & (Interrupt extends F ? {
      onInterrupt<B>(
        f: (interruptors: ReadonlySet<number>, result: Failure<A, E>) => B
      ): Builder<Out | B, A, E, I, Exclude<F, Interrupt>>
    } :
    unknown)
  & (Defect extends F ? {
      onDefect<B>(f: (defect: unknown, result: Failure<A, E>) => B): Builder<Out | B, A, E, I, Exclude<F, Defect>>
    } :
    unknown)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/AsyncResult.ts#L750)

Since v4.0.0