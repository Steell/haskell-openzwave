module Main (main) where

import Foreign.Hoppy.Setup (ProjectConfig (..), cppMain2)

main =
  cppMain2 $
  ProjectConfig
  { generatorExecutableName = "haskell-openzwave-gen"
  , cppPackageName = "haskell-openzwave-cpp"
  , cppSourcesDir = "cpp"
  , hsSourcesDir = "src"
  }
