return {
  settings = {
    lint = {
      select = {
        -- pyflakes
        "F",
        -- pycodestyle
        "E",
        "W",
        -- flake8-2020
        "YTT",
        -- flake8-bugbear
        "B",
        -- flake8-quotes
        "Q",
        -- flake8-debugger
        "T10",
        -- flake8-gettext
        "INT",
        -- pylint
        "PL",
        -- flake8-pytest-style
        "PT",
        -- misc lints
        "PIE",
        -- flake8-pyi
        "PYI",
        -- tidy imports
        "TID",
        -- implicit string concatenation
        "ISC",
        -- type-checking imports
        "TCH",
        -- comprehensions
        "C4",
        -- pygrep-hooks
        "PGH",
        -- Ruff-specific rules
        "RUF",
        -- flake8-bandit: exec-builtin
        "S102",
        -- numpy-legacy-random
        "NPY002",
        -- Perflint
        "PERF",
        -- flynt
        "FLY",
        -- flake8-logging-format
        "G",
        -- flake8-future-annotations
        "FA",
        -- unconventional-import-alias
        "ICN001",
        -- flake8-slots
        "SLOT",
        -- flake8-raise
        "RSE",
      },
      ignore = {
        --## Intentionally disabled
        -- module level import not at top of file
        "E402",
        -- do not assign a lambda expression, use a def
        "E731",
        -- controversial
        "B007",
        -- controversial
        "B008",
        -- setattr is used to side-step mypy
        "B009",
        -- getattr is used to side-step mypy
        "B010",
        -- tests use comparisons but not their returned value
        "B015",
        -- Function definition does not bind loop variable
        "B023",
        -- Only works with python >=3.10
        "B905",
        -- Too many arguments to function call
        "PLR0913",
        -- Too many returns
        "PLR0911",
        -- Too many branches
        "PLR0912",
        -- Too many statements
        "PLR0915",
        -- Redefined loop name
        "PLW2901",
        -- Global statements are discouraged
        "PLW0603",
        -- Use `typing.NamedTuple` instead of `collections.namedtuple`
        "PYI024",
        -- Use of possibly insecure function; consider using ast.literal_eval
        "S307",
        -- while int | float can be shortened to float, the former is more explicit
        "PYI041",
        -- incorrect-dict-iterator, flags valid Series.items usage
        "PERF102",
        -- try-except-in-loop, becomes useless in Python 3.11
        "PERF203",
        -- pytest-missing-fixture-name-underscore
        "PT004",
        -- pytest-incorrect-fixture-name-underscore
        "PT005",
        -- pytest-parametrize-names-wrong-type
        "PT006",
        -- pytest-parametrize-values-wrong-type
        "PT007",
        -- pytest-patch-with-lambda
        "PT008",
        -- pytest-raises-with-multiple-statements
        "PT012",
        -- pytest-assert-in-except
        "PT017",
        -- pytest-composite-assertion
        "PT018",
        -- pytest-fixture-param-without-value
        "PT019",
        -- The following rules may cause conflicts when used with the formatter:
        "ISC001",

        --## TODO: Enable gradually
        -- Useless statement
        "B018",
        -- Magic number
        "PLR2004",
        -- comparison-with-itself
        "PLR0124",
        -- collection-literal-concatenation
        "RUF005",
        -- pairwise-over-zipped (>=PY310 only)
        "RUF007",
        -- mutable-class-default
        "RUF012",
        -- type-comparison
        "E721",

        -- Additional pylint rules
        -- literal-membership
        "PLR6201", -- 847 errors
        -- Method could be a function, class method, or static method
        "PLR6301", -- 11411 errors
        -- Private name import
        "PLC2701", -- 27 errors
        -- Too many positional arguments (6/5)
        "PLR0917", -- 470 errors
        -- compare-to-empty-string
        "PLC1901",
        -- `tempfile.NamedTemporaryFile` in text mode without explicit `encoding` argument
        "PLW1514", -- 1 error
        -- Object does not implement `__hash__` method
        "PLW1641", -- 16 errors
        -- Bad or misspelled dunder method name
        "PLW3201", -- 69 errors, seems to be all false positive
        -- Unnecessary lookup of dictionary value by key
        "PLR1733", -- 5 errors, it seems like we wannt to ignore these
        -- Unnecessary lookup of list item by index
        "PLR1736", -- 4 errors, we're currently having inline pylint ignore
        -- empty-comment
        "PLR2044", -- autofixable
        -- Unpacking a dictionary in iteration without calling `.items()`
        "PLE1141", -- autofixable
        -- import-outside-toplevel
        "PLC0415",
        -- unnecessary-dunder-call
        "PLC2801",
        -- comparison-with-itself
        "PLR0124",
        -- too-many-public-methods
        "PLR0904",
        -- too-many-return-statements
        "PLR0911",
        -- too-many-branches
        "PLR0912",
        -- too-many-arguments
        "PLR0913",
        -- too-many-locals
        "PLR0914",
        -- too-many-statements
        "PLR0915",
        -- too-many-boolean-expressions
        "PLR0916",
        -- too-many-nested-blocks
        "PLR1702",
        -- redefined-argument-from-local
        "PLR1704",
        -- unnecessary-lambda
        "PLW0108",
        -- global-statement
        "PLW0603",
      },
    },
  },
}
