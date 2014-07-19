#' @title load all vector and raster files of study a in package AniMove
#' 
#' @description All files are spatial vector data sets (Polygons, Lines or Points) providing information 
#' 
#' @keywords shape vector, spatial data frames
#' @details the files are
#' 
#' "lsat_extent_LL": landsat extent for path 224 r63 (geographic coordinates lat long)
#' 
#' "lsat_extent": landsat extent for path 224 r63 (projection UTM north WGS84)
#'
#' "study_area": rectangle of the study area (projection UTM north WGS84)
#'   
#' 
#' 
#' @export
#' @seealso load_study_()
#' @examples
#' load_vector()
#' ## plotting the data in geographic coordinates
#' plot(lsat_extent_LL)
#' 
#' ## plotting the data in UTM north projection
#' plot(pa)
#' plot(abspres_poi,col="yellow",add=T)
#' @docType data
#' @name load_study_x
#' @references
#' \href{http://www.animove.org}.
#' @author ... Martin Wegmann ....

        load_study_x <- function(overwrite=TRUE){
                              x <- c("lsat_extent_LL","lsat_extent","roads","pa","abspres_poi","pres_poi","count_poi","trend_poi","study_area","movement_vector_w_time","training_vector_data","change_classes")  
                              for ( i in x) {
                              if(exists(i)) warning('object "', i, '" already exists',call.=FALSE)
                              else(
                              assign(i,readRDS(system.file(paste("extdata/",i,".rds",sep=""),package="RSecologyData")),envir=.GlobalEnv)
                              )
                              }
            }
