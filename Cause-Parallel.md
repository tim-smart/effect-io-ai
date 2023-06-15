# Parallel

The `Parallel` cause represents the composition of two causes which occurred
in parallel.

In Effect-TS programs, it is possible that two operations may be performed in
parallel. In these cases, the `Effect` workflow can fail for more than one
reason. If both computations fail, then there are actually two errors which
occurred in parallel. In these cases, the errors can be represented by the
`Parallel` cause.

Part of the `Cause` module from the `@effect/io` package. Also known as `Cause.Parallel`.
